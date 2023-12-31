.class public Lmiui/app/ActivityOptionsExpose;
.super Ljava/lang/Object;
.source "ActivityOptionsExpose.java"


# static fields
.field private static final CLASS:Lcom/miui/expose/utils/ClassHolder;

.field private static final setLaunchActivityType:Lcom/miui/expose/utils/MethodHolder;

.field private static final setLaunchWindowingMode:Lcom/miui/expose/utils/MethodHolder;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.app.ActivityOptions"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/app/ActivityOptionsExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    .line 12
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/app/ActivityOptionsExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/miui/expose/utils/ParameterTypes;->of([Ljava/lang/Class;)Lcom/miui/expose/utils/ParameterTypes;

    move-result-object v3

    const-string v4, "setLaunchWindowingMode"

    invoke-direct {v0, v1, v4, v3}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/app/ActivityOptionsExpose;->setLaunchWindowingMode:Lcom/miui/expose/utils/MethodHolder;

    .line 13
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/app/ActivityOptionsExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/miui/expose/utils/ParameterTypes;->of([Ljava/lang/Class;)Lcom/miui/expose/utils/ParameterTypes;

    move-result-object v2

    const-string v3, "setLaunchActivityType"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/app/ActivityOptionsExpose;->setLaunchActivityType:Lcom/miui/expose/utils/MethodHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmiui/app/ActivityOptionsExpose;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static box(Ljava/lang/Object;)Lmiui/app/ActivityOptionsExpose;
    .locals 1

    .line 32
    new-instance v0, Lmiui/app/ActivityOptionsExpose;

    invoke-direct {v0, p0}, Lmiui/app/ActivityOptionsExpose;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public setLaunchActivityType(I)V
    .locals 3

    .line 24
    sget-object v0, Lmiui/app/ActivityOptionsExpose;->setLaunchActivityType:Lcom/miui/expose/utils/MethodHolder;

    iget-object p0, p0, Lmiui/app/ActivityOptionsExpose;->instance:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLaunchWindowingMode(I)V
    .locals 3

    .line 20
    sget-object v0, Lmiui/app/ActivityOptionsExpose;->setLaunchWindowingMode:Lcom/miui/expose/utils/MethodHolder;

    iget-object p0, p0, Lmiui/app/ActivityOptionsExpose;->instance:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
