.class public Lcom/android/hideapi/ActivityTaskManagerExpose;
.super Ljava/lang/Object;


# direct methods
.method public static getService()Lcom/android/hideapi/IActivityTaskManagerExpose;
    .locals 5

    const-class v0, Landroid/app/ActivityTaskManager;

    const-class v1, Landroid/app/IActivityTaskManager;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "getService"

    invoke-static {v0, v1, v4, v3, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityTaskManager;

    invoke-static {v0}, Lcom/android/hideapi/IActivityTaskManagerExpose;->box(Landroid/app/IActivityTaskManager;)Lcom/android/hideapi/IActivityTaskManagerExpose;

    move-result-object v0

    return-object v0
.end method
