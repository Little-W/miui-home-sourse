.class Lcom/miui/home/launcher/widget/WidgetDetailsView$1;
.super Ljava/lang/Object;
.source "WidgetDetailsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/widget/WidgetDetailsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/widget/WidgetDetailsView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/widget/WidgetDetailsView;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView$1;->this$0:Lcom/miui/home/launcher/widget/WidgetDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView$1;->this$0:Lcom/miui/home/launcher/widget/WidgetDetailsView;

    iget-object p1, p1, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mWidgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    if-eqz p1, :cond_0

    .line 57
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView$1;->this$0:Lcom/miui/home/launcher/widget/WidgetDetailsView;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetDetailsView;->mWidgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    invoke-interface {p0}, Lcom/miui/home/launcher/widget/WidgetDetailsCallback;->onButtonClick()V

    :cond_0
    return-void
.end method
