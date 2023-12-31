.class public Lmiui/view/InputEventExpose;
.super Ljava/lang/Object;
.source "InputEventExpose.java"


# static fields
.field static final CLASS:Lcom/miui/expose/utils/ClassHolder;

.field private static final setDisplayId:Lcom/miui/expose/utils/MethodHolder;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.view.InputEvent"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/view/InputEventExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    .line 9
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/view/InputEventExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/miui/expose/utils/ParameterTypes;->of([Ljava/lang/Class;)Lcom/miui/expose/utils/ParameterTypes;

    move-result-object v2

    const-string v3, "setDisplayId"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/view/InputEventExpose;->setDisplayId:Lcom/miui/expose/utils/MethodHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lmiui/view/InputEventExpose;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static box(Ljava/lang/Object;)Lmiui/view/InputEventExpose;
    .locals 1

    .line 26
    new-instance v0, Lmiui/view/InputEventExpose;

    invoke-direct {v0, p0}, Lmiui/view/InputEventExpose;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public setDisplayId(I)V
    .locals 3

    .line 18
    sget-object v0, Lmiui/view/InputEventExpose;->setDisplayId:Lcom/miui/expose/utils/MethodHolder;

    iget-object p0, p0, Lmiui/view/InputEventExpose;->instance:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
