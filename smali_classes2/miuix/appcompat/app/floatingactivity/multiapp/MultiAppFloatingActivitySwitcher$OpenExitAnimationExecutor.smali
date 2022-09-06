.class Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$OpenExitAnimationExecutor;
.super Ljava/lang/Object;
.source "MultiAppFloatingActivitySwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OpenExitAnimationExecutor"
.end annotation


# instance fields
.field private mAppCompatActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 667
    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$OpenExitAnimationExecutor;->mAppCompatActivity:Ljava/lang/ref/WeakReference;

    .line 670
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$OpenExitAnimationExecutor;->mAppCompatActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 675
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$OpenExitAnimationExecutor;->mAppCompatActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->executeOpenExitAnimation()V

    :cond_0
    return-void
.end method
