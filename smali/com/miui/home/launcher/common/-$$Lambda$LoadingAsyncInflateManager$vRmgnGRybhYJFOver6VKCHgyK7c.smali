.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$vRmgnGRybhYJFOver6VKCHgyK7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

.field private final synthetic f$1:Ljava8/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;Ljava8/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$vRmgnGRybhYJFOver6VKCHgyK7c;->f$0:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    iput-object p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$vRmgnGRybhYJFOver6VKCHgyK7c;->f$1:Ljava8/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$vRmgnGRybhYJFOver6VKCHgyK7c;->f$0:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    iget-object v1, p0, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$vRmgnGRybhYJFOver6VKCHgyK7c;->f$1:Ljava8/util/function/Supplier;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->lambda$inflateViewAsync$1(Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;Ljava8/util/function/Supplier;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
