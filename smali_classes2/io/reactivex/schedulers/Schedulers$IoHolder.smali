.class final Lio/reactivex/schedulers/Schedulers$IoHolder;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/schedulers/Schedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IoHolder"
.end annotation


# static fields
.field static final DEFAULT:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/IoScheduler;-><init>()V

    sput-object v0, Lio/reactivex/schedulers/Schedulers$IoHolder;->DEFAULT:Lio/reactivex/Scheduler;

    return-void
.end method
