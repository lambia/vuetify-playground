import Data from "./_data_data";
import Merged from "./_data_merged";
import Structure from "./_data_structure";
import Old from "./_data_old";
const Merge = require("lodash.merge");

export default class AppService {

    constructor() {
        //console.log("Service init");
    }

    //Return a given value
    method(value) {
        return value;
    }

    /* CARDS RECURSIVE SERVICE */
    mergeBy(source, extend, sourceField, extendField) {
        return source.map(row => ({
            ...row,
            ...extend.find(item => row[sourceField] == item[extendField])
        }));
    }

    getNestedChildren(arr, parentId, idField, parentField) {
        let self = this;
        var result = [];
        for (var i in arr) {
            if (arr[i][parentField] == parentId) {
                var children = self.getNestedChildren(
                    arr,
                    arr[i][idField],
                    "id",
                    "parentId"
                );

                if (children.length) {
                    arr[i].children = children;
                }
                result.push(arr[i]);
            }
        }
        return result;
    }

    daTestare() {
        const a = { 1: { string: 'yes' }, 2: { string: 'no' } }
        const b = { 2: { string: 'yes' }, 3: { string: 'no' } }
        const c = { ...1, ...2 }
    }

    getData(dev) {
        let result = [];

        if (dev) {
            let merged = this.mergeBy(
                Structure,
                Data[0],
                "id",
                "componentId"
            );
            result = this.getNestedChildren(merged, 0, "id", "parentId");
        } else {
            result = Merged;
        }

        return result;
    }
    /* END OF CARDS RECURSIVE */

    /* CARDS PLAIN */
    pretendApi() {
        return Old.items.map(item => {
            return Merge({}, Old.config, item);
        });
    }

    /* END OF CARDS PLAIN */

}