.class public abstract Landroidx/room/InvalidationTracker$Observer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Observer"
.end annotation


# instance fields
.field final mTables:[Ljava/lang/String;


# direct methods
.method protected varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/room/InvalidationTracker$Observer;->mTables:[Ljava/lang/String;

    iget-object p0, p0, Landroidx/room/InvalidationTracker$Observer;->mTables:[Ljava/lang/String;

    array-length p2, p2

    aput-object p1, p0, p2

    return-void
.end method


# virtual methods
.method public abstract onInvalidated(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
