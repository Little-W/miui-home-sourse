.class public Lmiui/view/IRecentsAnimationControllerExpose;
.super Ljava/lang/Object;
.source "IRecentsAnimationControllerExpose.java"


# static fields
.field static final CLASS:Lcom/miui/expose/utils/ClassHolder;

.field private static final cleanupScreenshot:Lcom/miui/expose/utils/MethodHolder;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.view.IRecentsAnimationController"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/view/IRecentsAnimationControllerExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    .line 9
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/view/IRecentsAnimationControllerExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    sget-object v2, Lcom/miui/expose/utils/ParameterTypes;->EMPTY:Lcom/miui/expose/utils/ParameterTypes;

    const-string v3, "cleanupScreenshot"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/view/IRecentsAnimationControllerExpose;->cleanupScreenshot:Lcom/miui/expose/utils/MethodHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lmiui/view/IRecentsAnimationControllerExpose;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static box(Ljava/lang/Object;)Lmiui/view/IRecentsAnimationControllerExpose;
    .locals 1

    .line 26
    new-instance v0, Lmiui/view/IRecentsAnimationControllerExpose;

    invoke-direct {v0, p0}, Lmiui/view/IRecentsAnimationControllerExpose;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public cleanupScreenshot()V
    .locals 2

    .line 18
    sget-object v0, Lmiui/view/IRecentsAnimationControllerExpose;->cleanupScreenshot:Lcom/miui/expose/utils/MethodHolder;

    iget-object p0, p0, Lmiui/view/IRecentsAnimationControllerExpose;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
