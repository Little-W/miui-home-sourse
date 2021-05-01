.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$Utilities$G57vxVzGDWpHumk-cTwyR3Omhe4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final synthetic f$1:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$G57vxVzGDWpHumk-cTwyR3Omhe4;->f$0:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$G57vxVzGDWpHumk-cTwyR3Omhe4;->f$1:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$G57vxVzGDWpHumk-cTwyR3Omhe4;->f$0:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$G57vxVzGDWpHumk-cTwyR3Omhe4;->f$1:Ljava/util/function/Supplier;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/common/Utilities;->lambda$inflateViewAsync$152(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/util/function/Supplier;Ljava/lang/Void;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
