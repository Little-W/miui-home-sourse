.class public Lcom/android/hideapi/SurfaceControlExpose$TransactionExpose;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hideapi/SurfaceControlExpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransactionExpose"
.end annotation


# instance fields
.field private final instance:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method private constructor <init>(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/hideapi/SurfaceControlExpose$TransactionExpose;->instance:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public static box(Landroid/view/SurfaceControl$Transaction;)Lcom/android/hideapi/SurfaceControlExpose$TransactionExpose;
    .locals 1

    new-instance v0, Lcom/android/hideapi/SurfaceControlExpose$TransactionExpose;

    invoke-direct {v0, p0}, Lcom/android/hideapi/SurfaceControlExpose$TransactionExpose;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    return-object v0
.end method


# virtual methods
.method public remove(Landroid/view/SurfaceControl;)Lcom/android/hideapi/SurfaceControlExpose$TransactionExpose;
    .locals 6

    iget-object v0, p0, Lcom/android/hideapi/SurfaceControlExpose$TransactionExpose;->instance:Landroid/view/SurfaceControl$Transaction;

    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string p1, "remove"

    invoke-static {v0, v1, p1, v3, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
