.class public final Lio/reactivex2/internal/functions/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/functions/Functions$MaxRequestSubscription;,
        Lio/reactivex2/internal/functions/Functions$NaturalObjectComparator;,
        Lio/reactivex2/internal/functions/Functions$NullCallable;,
        Lio/reactivex2/internal/functions/Functions$FalsePredicate;,
        Lio/reactivex2/internal/functions/Functions$TruePredicate;,
        Lio/reactivex2/internal/functions/Functions$EmptyLongConsumer;,
        Lio/reactivex2/internal/functions/Functions$OnErrorMissingConsumer;,
        Lio/reactivex2/internal/functions/Functions$ErrorConsumer;,
        Lio/reactivex2/internal/functions/Functions$EmptyConsumer;,
        Lio/reactivex2/internal/functions/Functions$EmptyAction;,
        Lio/reactivex2/internal/functions/Functions$EmptyRunnable;,
        Lio/reactivex2/internal/functions/Functions$Identity;,
        Lio/reactivex2/internal/functions/Functions$ArrayListCapacityCallable;
    }
.end annotation


# static fields
.field static final ALWAYS_FALSE:Lio/reactivex2/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Predicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final ALWAYS_TRUE:Lio/reactivex2/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Predicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ACTION:Lio/reactivex2/functions/Action;

.field static final EMPTY_CONSUMER:Lio/reactivex2/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Consumer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_LONG_CONSUMER:Lio/reactivex2/functions/LongConsumer;

.field public static final EMPTY_RUNNABLE:Ljava/lang/Runnable;

.field public static final ERROR_CONSUMER:Lio/reactivex2/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static final IDENTITY:Lio/reactivex2/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final NATURAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final NULL_SUPPLIER:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_ERROR_MISSING:Lio/reactivex2/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_MAX:Lio/reactivex2/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Consumer<",
            "Lorg/reactivestreams2/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lio/reactivex2/internal/functions/Functions$Identity;

    invoke-direct {v0}, Lio/reactivex2/internal/functions/Functions$Identity;-><init>()V

    sput-object v0, Lio/reactivex2/internal/functions/Functions;->IDENTITY:Lio/reactivex2/functions/Function;

    .line 93
    new-instance v0, Lio/reactivex2/internal/functions/Functions$EmptyRunnable;

    invoke-direct {v0}, Lio/reactivex2/internal/functions/Functions$EmptyRunnable;-><init>()V

    sput-object v0, Lio/reactivex2/internal/functions/Functions;->EMPTY_RUNNABLE:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lio/reactivex2/internal/functions/Functions$EmptyAction;

    invoke-direct {v0}, Lio/reactivex2/internal/functions/Functions$EmptyAction;-><init>()V

    sput-object v0, Lio/reactivex2/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex2/functions/Action;

    .line 97
    new-instance v0, Lio/reactivex2/internal/functions/Functions$EmptyConsumer;

    invoke-direct {v0}, Lio/reactivex2/internal/functions/Functions$EmptyConsumer;-><init>()V

    sput-object v0, Lio/reactivex2/internal/functions/Functions;->EMPTY_CONSUMER:Lio/reactivex2/functions/Consumer;

    .line 109
    new-instance v0, Lio/reactivex2/internal/functions/Functions$ErrorConsumer;

    invoke-direct {v0}, Lio/reactivex2/internal/functions/Functions$ErrorConsumer;-><init>()V

    sput-object v0, Lio/reactivex2/internal/functions/Functions;->ERROR_CONSUMER:Lio/reactivex2/functions/Consumer;

    .line 115
    new-instance v0, Lio/reactivex2/internal/functions/Functions$OnErrorMissingConsumer;

    invoke-direct {v0}, Lio/reactivex2/internal/functions/Functions$OnErrorMissingConsumer;-><init>()V

    sput-object v0, Lio/reactivex2/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex2/functions/Consumer;

    .line 117
    new-instance v0, Lio/reactivex2/internal/functions/Functions$EmptyLongConsumer;

    invoke-direct {v0}, Lio/reactivex2/internal/functions/Functions$EmptyLongConsumer;-><init>()V

    sput-object v0, Lio/reactivex2/internal/functions/Functions;->EMPTY_LONG_CONSUMER:Lio/reactivex2/functions/LongConsumer;

    .line 119
    new-instance v0, Lio/reactivex2/internal/functions/Functions$TruePredicate;

    invoke-direct {v0}, Lio/reactivex2/internal/functions/Functions$TruePredicate;-><init>()V

    sput-object v0, Lio/reactivex2/internal/functions/Functions;->ALWAYS_TRUE:Lio/reactivex2/functions/Predicate;

    .line 121
    new-instance v0, Lio/reactivex2/internal/functions/Functions$FalsePredicate;

    invoke-direct {v0}, Lio/reactivex2/internal/functions/Functions$FalsePredicate;-><init>()V

    sput-object v0, Lio/reactivex2/internal/functions/Functions;->ALWAYS_FALSE:Lio/reactivex2/functions/Predicate;

    .line 123
    new-instance v0, Lio/reactivex2/internal/functions/Functions$NullCallable;

    invoke-direct {v0}, Lio/reactivex2/internal/functions/Functions$NullCallable;-><init>()V

    sput-object v0, Lio/reactivex2/internal/functions/Functions;->NULL_SUPPLIER:Ljava/util/concurrent/Callable;

    .line 125
    new-instance v0, Lio/reactivex2/internal/functions/Functions$NaturalObjectComparator;

    invoke-direct {v0}, Lio/reactivex2/internal/functions/Functions$NaturalObjectComparator;-><init>()V

    sput-object v0, Lio/reactivex2/internal/functions/Functions;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 514
    new-instance v0, Lio/reactivex2/internal/functions/Functions$MaxRequestSubscription;

    invoke-direct {v0}, Lio/reactivex2/internal/functions/Functions$MaxRequestSubscription;-><init>()V

    sput-object v0, Lio/reactivex2/internal/functions/Functions;->REQUEST_MAX:Lio/reactivex2/functions/Consumer;

    return-void
.end method

.method public static createArrayList(I)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 251
    new-instance v0, Lio/reactivex2/internal/functions/Functions$ArrayListCapacityCallable;

    invoke-direct {v0, p0}, Lio/reactivex2/internal/functions/Functions$ArrayListCapacityCallable;-><init>(I)V

    return-object v0
.end method

.method public static emptyConsumer()Lio/reactivex2/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex2/functions/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 106
    sget-object v0, Lio/reactivex2/internal/functions/Functions;->EMPTY_CONSUMER:Lio/reactivex2/functions/Consumer;

    return-object v0
.end method
