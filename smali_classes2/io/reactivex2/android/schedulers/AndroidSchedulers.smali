.class public final Lio/reactivex2/android/schedulers/AndroidSchedulers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/android/schedulers/AndroidSchedulers$MainHolder;
    }
.end annotation


# static fields
.field private static final MAIN_THREAD:Lio/reactivex2/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex2/android/schedulers/AndroidSchedulers$1;

    invoke-direct {v0}, Lio/reactivex2/android/schedulers/AndroidSchedulers$1;-><init>()V

    invoke-static {v0}, Lio/reactivex2/android/plugins/RxAndroidPlugins;->initMainThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex2/android/schedulers/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex2/Scheduler;

    return-void
.end method

.method public static mainThread()Lio/reactivex2/Scheduler;
    .locals 1

    sget-object v0, Lio/reactivex2/android/schedulers/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex2/Scheduler;

    invoke-static {v0}, Lio/reactivex2/android/plugins/RxAndroidPlugins;->onMainThreadScheduler(Lio/reactivex2/Scheduler;)Lio/reactivex2/Scheduler;

    move-result-object v0

    return-object v0
.end method
