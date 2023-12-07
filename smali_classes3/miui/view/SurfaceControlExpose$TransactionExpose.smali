.class public Lmiui/view/SurfaceControlExpose$TransactionExpose;
.super Ljava/lang/Object;
.source "SurfaceControlExpose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/SurfaceControlExpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransactionExpose"
.end annotation


# static fields
.field public static final CLASS:Lcom/miui/expose/utils/ClassHolder;

.field private static final remove:Lcom/miui/expose/utils/MethodHolder;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.view.SurfaceControl$Transaction"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/view/SurfaceControlExpose$TransactionExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    .line 14
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/view/SurfaceControlExpose$TransactionExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/miui/expose/utils/ClassHolder;

    sget-object v3, Lmiui/view/SurfaceControlExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/miui/expose/utils/ParameterTypes;->of([Lcom/miui/expose/utils/ClassHolder;)Lcom/miui/expose/utils/ParameterTypes;

    move-result-object v2

    const-string v3, "remove"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/view/SurfaceControlExpose$TransactionExpose;->remove:Lcom/miui/expose/utils/MethodHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lmiui/view/SurfaceControlExpose$TransactionExpose;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static box(Ljava/lang/Object;)Lmiui/view/SurfaceControlExpose$TransactionExpose;
    .locals 1

    .line 32
    new-instance v0, Lmiui/view/SurfaceControlExpose$TransactionExpose;

    invoke-direct {v0, p0}, Lmiui/view/SurfaceControlExpose$TransactionExpose;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public remove(Landroid/view/SurfaceControl;)Lmiui/view/SurfaceControlExpose$TransactionExpose;
    .locals 4

    .line 23
    sget-object v0, Lmiui/view/SurfaceControlExpose$TransactionExpose;->remove:Lcom/miui/expose/utils/MethodHolder;

    iget-object v1, p0, Lmiui/view/SurfaceControlExpose$TransactionExpose;->instance:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
