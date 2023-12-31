.class Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;
.super Ljava/lang/Object;
.source "BackdropBlurViewBinder.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;


# direct methods
.method constructor <init>(Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;->this$0:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;->this$0:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->access$000(Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 28
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder$1;->this$0:Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;

    invoke-static {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;->access$100(Lcom/miui/blur/sdk/backdrop/BackdropBlurViewBinder;)V

    const/4 p0, 0x1

    return p0
.end method
