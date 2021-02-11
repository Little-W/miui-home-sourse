.class final Lio/reactivex2/schedulers/Schedulers$ComputationHolder;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/schedulers/Schedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComputationHolder"
.end annotation


# static fields
.field static final DEFAULT:Lio/reactivex2/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lio/reactivex2/internal/schedulers/ComputationScheduler;

    invoke-direct {v0}, Lio/reactivex2/internal/schedulers/ComputationScheduler;-><init>()V

    sput-object v0, Lio/reactivex2/schedulers/Schedulers$ComputationHolder;->DEFAULT:Lio/reactivex2/Scheduler;

    return-void
.end method
