.class public Lmiui/content/res/WindowConfigurationExpose;
.super Ljava/lang/Object;
.source "WindowConfigurationExpose.java"


# static fields
.field static final CLASS:Lcom/miui/expose/utils/ClassHolder;

.field private static final getActivityType:Lcom/miui/expose/utils/MethodHolder;

.field private static final getBounds:Lcom/miui/expose/utils/MethodHolder;

.field private static final getWindowingMode:Lcom/miui/expose/utils/MethodHolder;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.app.WindowConfiguration"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/content/res/WindowConfigurationExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    .line 10
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/content/res/WindowConfigurationExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    sget-object v2, Lcom/miui/expose/utils/ParameterTypes;->EMPTY:Lcom/miui/expose/utils/ParameterTypes;

    const-string v3, "getActivityType"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/content/res/WindowConfigurationExpose;->getActivityType:Lcom/miui/expose/utils/MethodHolder;

    .line 11
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/content/res/WindowConfigurationExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    sget-object v2, Lcom/miui/expose/utils/ParameterTypes;->EMPTY:Lcom/miui/expose/utils/ParameterTypes;

    const-string v3, "getWindowingMode"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/content/res/WindowConfigurationExpose;->getWindowingMode:Lcom/miui/expose/utils/MethodHolder;

    .line 12
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/content/res/WindowConfigurationExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    sget-object v2, Lcom/miui/expose/utils/ParameterTypes;->EMPTY:Lcom/miui/expose/utils/ParameterTypes;

    const-string v3, "getBounds"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/content/res/WindowConfigurationExpose;->getBounds:Lcom/miui/expose/utils/MethodHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lmiui/content/res/WindowConfigurationExpose;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static box(Ljava/lang/Object;)Lmiui/content/res/WindowConfigurationExpose;
    .locals 1

    .line 38
    new-instance v0, Lmiui/content/res/WindowConfigurationExpose;

    invoke-direct {v0, p0}, Lmiui/content/res/WindowConfigurationExpose;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getActivityType()I
    .locals 2

    .line 19
    sget-object v0, Lmiui/content/res/WindowConfigurationExpose;->getActivityType:Lcom/miui/expose/utils/MethodHolder;

    iget-object p0, p0, Lmiui/content/res/WindowConfigurationExpose;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getWindowingMode()I
    .locals 2

    .line 23
    sget-object v0, Lmiui/content/res/WindowConfigurationExpose;->getWindowingMode:Lcom/miui/expose/utils/MethodHolder;

    iget-object p0, p0, Lmiui/content/res/WindowConfigurationExpose;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public unbox()Ljava/lang/Object;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiui/content/res/WindowConfigurationExpose;->instance:Ljava/lang/Object;

    return-object p0
.end method
