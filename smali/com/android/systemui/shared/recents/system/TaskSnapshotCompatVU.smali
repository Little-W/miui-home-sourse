.class public Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;
.super Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;
.source "TaskSnapshotCompatVU.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/system/ITaskSnapshot;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVS;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static create(I)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;
    .locals 1

    .line 16
    new-instance v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;->getTaskSnapshotInstance(I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVU;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getTaskSnapshotInstance(I)Ljava/lang/Object;
    .locals 11

    const-string v0, "android.window.TaskSnapshot"

    .line 20
    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_0

    return-object v0

    .line 26
    :cond_0
    :try_start_0
    const-class v1, Landroid/app/IActivityTaskManager;

    .line 27
    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/IActivityTaskManagerExpose;->unbox()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getTaskSnapshot"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    new-array v7, v5, [Ljava/lang/Object;

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v7, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v7, v10

    move-object v5, v6

    move-object v6, v7

    .line 26
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method
