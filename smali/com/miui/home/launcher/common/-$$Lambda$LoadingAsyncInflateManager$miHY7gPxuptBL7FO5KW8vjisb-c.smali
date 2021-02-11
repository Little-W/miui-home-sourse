.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$miHY7gPxuptBL7FO5KW8vjisb-c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

.field private final synthetic f$1:Ljava8/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;Ljava8/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$miHY7gPxuptBL7FO5KW8vjisb-c;->f$0:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    iput-object p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$miHY7gPxuptBL7FO5KW8vjisb-c;->f$1:Ljava8/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$miHY7gPxuptBL7FO5KW8vjisb-c;->f$0:Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;

    iget-object v1, p0, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$miHY7gPxuptBL7FO5KW8vjisb-c;->f$1:Ljava8/util/function/Consumer;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->lambda$inflateViewAsync$2(Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;Ljava8/util/function/Consumer;Landroid/view/View;)V

    return-void
.end method
