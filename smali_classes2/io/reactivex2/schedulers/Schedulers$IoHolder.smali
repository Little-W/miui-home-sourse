.class final Lio/reactivex2/schedulers/Schedulers$IoHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/schedulers/Schedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IoHolder"
.end annotation


# static fields
.field static final DEFAULT:Lio/reactivex2/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex2/internal/schedulers/IoScheduler;

    invoke-direct {v0}, Lio/reactivex2/internal/schedulers/IoScheduler;-><init>()V

    sput-object v0, Lio/reactivex2/schedulers/Schedulers$IoHolder;->DEFAULT:Lio/reactivex2/Scheduler;

    return-void
.end method
