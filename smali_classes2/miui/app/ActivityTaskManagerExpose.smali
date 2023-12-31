.class public Lmiui/app/ActivityTaskManagerExpose;
.super Ljava/lang/Object;
.source "ActivityTaskManagerExpose.java"


# static fields
.field private static final CLASS:Lcom/miui/expose/utils/ClassHolder;

.field private static final getService:Lcom/miui/expose/utils/MethodHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.app.ActivityTaskManager"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/app/ActivityTaskManagerExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    .line 10
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/app/ActivityTaskManagerExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    sget-object v2, Lcom/miui/expose/utils/ParameterTypes;->EMPTY:Lcom/miui/expose/utils/ParameterTypes;

    const-string v3, "getService"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/app/ActivityTaskManagerExpose;->getService:Lcom/miui/expose/utils/MethodHolder;

    return-void
.end method

.method public static getService()Lmiui/app/IActivityTaskManagerExpose;
    .locals 3

    .line 17
    sget-object v0, Lmiui/app/ActivityTaskManagerExpose;->getService:Lcom/miui/expose/utils/MethodHolder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/IActivityTaskManagerExpose;->box(Ljava/lang/Object;)Lmiui/app/IActivityTaskManagerExpose;

    move-result-object v0

    return-object v0
.end method
