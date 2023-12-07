.class Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;
.super Ljava/lang/Object;

# interfaces
.implements Lio/requery/android/database/sqlite/SQLiteDatabase$Function$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/requery/android/database/sqlite/SQLiteFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyResult"
.end annotation


# instance fields
.field contextPtr:J

.field isSet:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/requery/android/database/sqlite/SQLiteFunction$1;)V
    .locals 0

    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;-><init>()V

    return-void
.end method

.method private checkSet()V
    .locals 1

    iget-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->isSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->isSet:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Result is already set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public setNull()V
    .locals 2

    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->checkSet()V

    iget-wide v0, p0, Lio/requery/android/database/sqlite/SQLiteFunction$MyResult;->contextPtr:J

    invoke-static {v0, v1}, Lio/requery/android/database/sqlite/SQLiteFunction;->nativeSetResultNull(J)V

    return-void
.end method
