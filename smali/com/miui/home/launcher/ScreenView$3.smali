.class Lcom/miui/home/launcher/ScreenView$3;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ScreenView;->createSeekPoint()Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ScreenView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ScreenView;)V
    .locals 0

    .line 2167
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$3;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2170
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$3;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget-object v1, v0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPointIndex(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    return-void
.end method
