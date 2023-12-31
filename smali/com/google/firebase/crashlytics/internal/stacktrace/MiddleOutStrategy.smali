.class public Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;
.super Ljava/lang/Object;
.source "MiddleOutStrategy.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;


# instance fields
.field private final trimmedSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;->trimmedSize:I

    return-void
.end method


# virtual methods
.method public getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 3

    .line 35
    array-length v0, p1

    iget p0, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/MiddleOutStrategy;->trimmedSize:I

    if-gt v0, p0, :cond_0

    return-object p1

    .line 40
    :cond_0
    div-int/lit8 v0, p0, 0x2

    sub-int v1, p0, v0

    .line 43
    new-array p0, p0, [Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    .line 44
    invoke-static {p1, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {p1, v2, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method
