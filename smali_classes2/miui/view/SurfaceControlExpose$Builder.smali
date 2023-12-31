.class public Lmiui/view/SurfaceControlExpose$Builder;
.super Ljava/lang/Object;
.source "SurfaceControlExpose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/SurfaceControlExpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final CLASS:Lcom/miui/expose/utils/ClassHolder;

.field private static final setColorLayer:Lcom/miui/expose/utils/MethodHolder;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.view.SurfaceControl$Builder"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/view/SurfaceControlExpose$Builder;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    .line 38
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/view/SurfaceControlExpose$Builder;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    sget-object v2, Lcom/miui/expose/utils/ParameterTypes;->EMPTY:Lcom/miui/expose/utils/ParameterTypes;

    const-string v3, "setColorLayer"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/view/SurfaceControlExpose$Builder;->setColorLayer:Lcom/miui/expose/utils/MethodHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lmiui/view/SurfaceControlExpose$Builder;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static box(Ljava/lang/Object;)Lmiui/view/SurfaceControlExpose$Builder;
    .locals 1

    .line 56
    new-instance v0, Lmiui/view/SurfaceControlExpose$Builder;

    invoke-direct {v0, p0}, Lmiui/view/SurfaceControlExpose$Builder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public setColorLayer()Lmiui/view/SurfaceControlExpose$Builder;
    .locals 3

    .line 47
    sget-object v0, Lmiui/view/SurfaceControlExpose$Builder;->setColorLayer:Lcom/miui/expose/utils/MethodHolder;

    iget-object v1, p0, Lmiui/view/SurfaceControlExpose$Builder;->instance:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public unbox()Ljava/lang/Object;
    .locals 0

    .line 52
    iget-object p0, p0, Lmiui/view/SurfaceControlExpose$Builder;->instance:Ljava/lang/Object;

    return-object p0
.end method
