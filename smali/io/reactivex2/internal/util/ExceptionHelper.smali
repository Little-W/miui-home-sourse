.class public final Lio/reactivex2/internal/util/ExceptionHelper;
.super Ljava/lang/Object;
.source "ExceptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/util/ExceptionHelper$Termination;
    }
.end annotation


# static fields
.field public static final TERMINATED:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lio/reactivex2/internal/util/ExceptionHelper$Termination;

    invoke-direct {v0}, Lio/reactivex2/internal/util/ExceptionHelper$Termination;-><init>()V

    sput-object v0, Lio/reactivex2/internal/util/ExceptionHelper;->TERMINATED:Ljava/lang/Throwable;

    return-void
.end method

.method public static wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .line 40
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_1

    .line 43
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Ljava/lang/RuntimeException;

    return-object p0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 41
    :cond_1
    check-cast p0, Ljava/lang/Error;

    throw p0
.end method
