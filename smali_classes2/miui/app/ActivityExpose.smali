.class public Lmiui/app/ActivityExpose;
.super Ljava/lang/Object;
.source "ActivityExpose.java"


# static fields
.field private static final CLASS:Lcom/miui/expose/utils/ClassHolder;

.field private static final registerRemoteAnimations:Lcom/miui/expose/utils/MethodHolder;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.app.Activity"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/app/ActivityExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    .line 12
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/app/ActivityExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/miui/expose/utils/ClassHolder;

    sget-object v3, Lmiui/view/RemoteAnimationDefinitionExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/miui/expose/utils/ParameterTypes;->of([Lcom/miui/expose/utils/ClassHolder;)Lcom/miui/expose/utils/ParameterTypes;

    move-result-object v2

    const-string v3, "registerRemoteAnimations"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/app/ActivityExpose;->registerRemoteAnimations:Lcom/miui/expose/utils/MethodHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lmiui/app/ActivityExpose;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static box(Ljava/lang/Object;)Lmiui/app/ActivityExpose;
    .locals 1

    .line 27
    new-instance v0, Lmiui/app/ActivityExpose;

    invoke-direct {v0, p0}, Lmiui/app/ActivityExpose;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public registerRemoteAnimations(Lmiui/view/RemoteAnimationDefinitionExpose;)V
    .locals 3

    .line 19
    sget-object v0, Lmiui/app/ActivityExpose;->registerRemoteAnimations:Lcom/miui/expose/utils/MethodHolder;

    iget-object p0, p0, Lmiui/app/ActivityExpose;->instance:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmiui/view/RemoteAnimationDefinitionExpose;->unbox()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
