.class public final Lio/requery/android/database/sqlite/CloseGuard;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/requery/android/database/sqlite/CloseGuard$DefaultReporter;,
        Lio/requery/android/database/sqlite/CloseGuard$Reporter;
    }
.end annotation


# static fields
.field private static volatile ENABLED:Z

.field private static final NOOP:Lio/requery/android/database/sqlite/CloseGuard;

.field private static volatile REPORTER:Lio/requery/android/database/sqlite/CloseGuard$Reporter;


# instance fields
.field private allocationSite:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/requery/android/database/sqlite/CloseGuard;

    invoke-direct {v0}, Lio/requery/android/database/sqlite/CloseGuard;-><init>()V

    sput-object v0, Lio/requery/android/database/sqlite/CloseGuard;->NOOP:Lio/requery/android/database/sqlite/CloseGuard;

    const/4 v0, 0x1

    sput-boolean v0, Lio/requery/android/database/sqlite/CloseGuard;->ENABLED:Z

    new-instance v0, Lio/requery/android/database/sqlite/CloseGuard$DefaultReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/requery/android/database/sqlite/CloseGuard$DefaultReporter;-><init>(Lio/requery/android/database/sqlite/CloseGuard$1;)V

    sput-object v0, Lio/requery/android/database/sqlite/CloseGuard;->REPORTER:Lio/requery/android/database/sqlite/CloseGuard$Reporter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lio/requery/android/database/sqlite/CloseGuard;
    .locals 1

    sget-boolean v0, Lio/requery/android/database/sqlite/CloseGuard;->ENABLED:Z

    if-nez v0, :cond_0

    sget-object v0, Lio/requery/android/database/sqlite/CloseGuard;->NOOP:Lio/requery/android/database/sqlite/CloseGuard;

    return-object v0

    :cond_0
    new-instance v0, Lio/requery/android/database/sqlite/CloseGuard;

    invoke-direct {v0}, Lio/requery/android/database/sqlite/CloseGuard;-><init>()V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/requery/android/database/sqlite/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    sget-object v0, Lio/requery/android/database/sqlite/CloseGuard;->NOOP:Lio/requery/android/database/sqlite/CloseGuard;

    if-eq p0, v0, :cond_1

    sget-boolean v0, Lio/requery/android/database/sqlite/CloseGuard;->ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Explicit termination method \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not called"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/requery/android/database/sqlite/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "closer == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public warnIfOpen()V
    .locals 2

    iget-object v0, p0, Lio/requery/android/database/sqlite/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    sget-boolean v0, Lio/requery/android/database/sqlite/CloseGuard;->ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/requery/android/database/sqlite/CloseGuard;->REPORTER:Lio/requery/android/database/sqlite/CloseGuard$Reporter;

    iget-object p0, p0, Lio/requery/android/database/sqlite/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    const-string v1, "A resource was acquired at attached stack trace but never released. See java.io.Closeable for information on avoiding resource leaks."

    invoke-interface {v0, v1, p0}, Lio/requery/android/database/sqlite/CloseGuard$Reporter;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
