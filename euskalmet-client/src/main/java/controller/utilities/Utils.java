package controller.utilities;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class Utils {
    public static <T> List<T> getListFromJSON(String key, String arrayKey, String jsonResult) {
        List<T> ret = new ArrayList<T>();
        try {
            JSONObject resultJsonObc = new JSONObject(jsonResult);
            JSONArray arr = (JSONArray) resultJsonObc.get(arrayKey);
            for (int i = 0; i < arr.length(); i++) {
                JSONObject obj = null;
                obj = arr.getJSONObject(i);
                T munName = (T) obj.get(key);
                ret.add(munName);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return ret;
    }
}

