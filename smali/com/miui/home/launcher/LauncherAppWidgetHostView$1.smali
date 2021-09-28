.class Lcom/miui/home/launcher/LauncherAppWidgetHostView$1;
.super Landroid/view/ViewOutlineProvider;
.source "LauncherAppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$1;->this$0:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$1;->this$0:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->access$000(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$1;->this$0:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->access$100(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$1;->this$0:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->access$000(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView$1;->this$0:Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->access$100(Lcom/miui/home/launcher/LauncherAppWidgetHostView;)F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Outline;->setEmpty()V

    :goto_1
    return-void
.end method
