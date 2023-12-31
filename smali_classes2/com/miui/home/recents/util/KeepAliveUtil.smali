.class public Lcom/miui/home/recents/util/KeepAliveUtil;
.super Ljava/lang/Object;
.source "KeepAliveUtil.java"


# direct methods
.method public static shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "com.miui.enterprise.ApplicationHelper"

    .line 16
    invoke-static {v1}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const-string v4, "shouldKeeAlive"

    .line 18
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v0

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v8, v7, v10

    new-array v8, v1, [Ljava/lang/Object;

    aput-object p0, v8, v0

    aput-object p1, v8, v9

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v8, v10

    .line 18
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method
