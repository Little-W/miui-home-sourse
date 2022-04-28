.class Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;
.super Ljava/lang/Object;
.source "SQLiteFunction.java"

# interfaces
.implements Lio/requery/android/database/sqlite/SQLiteDatabase$Function$Args;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/requery/android/database/sqlite/SQLiteFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyArgs"
.end annotation


# instance fields
.field argsCount:I

.field argsPtr:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/requery/android/database/sqlite/SQLiteFunction$1;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lio/requery/android/database/sqlite/SQLiteFunction$MyArgs;-><init>()V

    return-void
.end method
