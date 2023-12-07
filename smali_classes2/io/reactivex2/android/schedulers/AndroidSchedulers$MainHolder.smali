.class final Lio/reactivex2/android/schedulers/AndroidSchedulers$MainHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/android/schedulers/AndroidSchedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainHolder"
.end annotation


# static fields
.field static final DEFAULT:Lio/reactivex2/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/reactivex2/android/schedulers/HandlerScheduler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex2/android/schedulers/HandlerScheduler;-><init>(Landroid/os/Handler;Z)V

    sput-object v0, Lio/reactivex2/android/schedulers/AndroidSchedulers$MainHolder;->DEFAULT:Lio/reactivex2/Scheduler;

    return-void
.end method
