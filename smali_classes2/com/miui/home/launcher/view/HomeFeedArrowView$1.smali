.class Lcom/miui/home/launcher/view/HomeFeedArrowView$1;
.super Ljava/lang/Object;
.source "HomeFeedArrowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/view/HomeFeedArrowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/view/HomeFeedArrowView;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$002(Lcom/miui/home/launcher/view/HomeFeedArrowView;F)F

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$102(Lcom/miui/home/launcher/view/HomeFeedArrowView;Z)Z

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$202(Lcom/miui/home/launcher/view/HomeFeedArrowView;F)F

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v0, v3}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$302(Lcom/miui/home/launcher/view/HomeFeedArrowView;F)F

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$400(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->invalidate()V

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$500(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;->onAlphaUpdate(F)V

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$500(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;->onTranslateY(FZ)V

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$600(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$700(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->access$800(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$900(Lcom/miui/home/launcher/view/HomeFeedArrowView;)Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;->access$1000(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtil;)V

    :goto_0
    return-void
.end method
