.class public Lmiui/view/InputMonitorExpose;
.super Ljava/lang/Object;
.source "InputMonitorExpose.java"


# static fields
.field static final CLASS:Lcom/miui/expose/utils/ClassHolder;

.field private static final dispose:Lcom/miui/expose/utils/MethodHolder;

.field private static final getInputChannel:Lcom/miui/expose/utils/MethodHolder;

.field private static final pilferPointers:Lcom/miui/expose/utils/MethodHolder;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.view.InputMonitor"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/view/InputMonitorExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    .line 9
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/view/InputMonitorExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    sget-object v2, Lcom/miui/expose/utils/ParameterTypes;->EMPTY:Lcom/miui/expose/utils/ParameterTypes;

    const-string v3, "getInputChannel"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/view/InputMonitorExpose;->getInputChannel:Lcom/miui/expose/utils/MethodHolder;

    .line 10
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/view/InputMonitorExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    sget-object v2, Lcom/miui/expose/utils/ParameterTypes;->EMPTY:Lcom/miui/expose/utils/ParameterTypes;

    const-string v3, "pilferPointers"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/view/InputMonitorExpose;->pilferPointers:Lcom/miui/expose/utils/MethodHolder;

    .line 11
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/view/InputMonitorExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    sget-object v2, Lcom/miui/expose/utils/ParameterTypes;->EMPTY:Lcom/miui/expose/utils/ParameterTypes;

    const-string v3, "dispose"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/view/InputMonitorExpose;->dispose:Lcom/miui/expose/utils/MethodHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmiui/view/InputMonitorExpose;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static box(Ljava/lang/Object;)Lmiui/view/InputMonitorExpose;
    .locals 1

    .line 36
    new-instance v0, Lmiui/view/InputMonitorExpose;

    invoke-direct {v0, p0}, Lmiui/view/InputMonitorExpose;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 28
    sget-object v0, Lmiui/view/InputMonitorExpose;->dispose:Lcom/miui/expose/utils/MethodHolder;

    iget-object p0, p0, Lmiui/view/InputMonitorExpose;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getInputChannel()Lmiui/view/InputChannelExpose;
    .locals 2

    .line 20
    sget-object v0, Lmiui/view/InputMonitorExpose;->getInputChannel:Lcom/miui/expose/utils/MethodHolder;

    iget-object p0, p0, Lmiui/view/InputMonitorExpose;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmiui/view/InputChannelExpose;->box(Ljava/lang/Object;)Lmiui/view/InputChannelExpose;

    move-result-object p0

    return-object p0
.end method

.method public pilferPointers()V
    .locals 2

    .line 24
    sget-object v0, Lmiui/view/InputMonitorExpose;->pilferPointers:Lcom/miui/expose/utils/MethodHolder;

    iget-object p0, p0, Lmiui/view/InputMonitorExpose;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
