.class abstract Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;
.super Lio/reactivex2/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex2/Observable<",
        "TU;>;"
    }
.end annotation


# instance fields
.field protected final source:Lio/reactivex2/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/ObservableSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex2/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/ObservableSource<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex2/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;->source:Lio/reactivex2/ObservableSource;

    return-void
.end method
