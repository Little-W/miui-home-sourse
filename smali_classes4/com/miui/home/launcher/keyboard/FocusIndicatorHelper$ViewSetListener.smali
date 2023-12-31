.class Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper$ViewSetListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FocusIndicatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewSetListener"
.end annotation


# instance fields
.field private final mCallOnCancel:Z

.field private mCalled:Z

.field private final mViewToSet:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper;Landroid/view/View;Z)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper$ViewSetListener;->this$0:Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 217
    iput-boolean p1, p0, Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper$ViewSetListener;->mCalled:Z

    .line 220
    iput-object p2, p0, Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper$ViewSetListener;->mViewToSet:Landroid/view/View;

    .line 221
    iput-boolean p3, p0, Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper$ViewSetListener;->mCallOnCancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 226
    iget-boolean p1, p0, Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper$ViewSetListener;->mCallOnCancel:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper$ViewSetListener;->mCalled:Z

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 233
    iget-boolean p1, p0, Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper$ViewSetListener;->mCalled:Z

    if-nez p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper$ViewSetListener;->this$0:Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper;

    iget-object v0, p0, Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper$ViewSetListener;->mViewToSet:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper;->setCurrentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Lcom/miui/home/launcher/keyboard/FocusIndicatorHelper$ViewSetListener;->mCalled:Z

    :cond_0
    return-void
.end method
