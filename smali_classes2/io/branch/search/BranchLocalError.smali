.class public abstract Lio/branch/search/BranchLocalError;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/BranchLocalError$InvalidDB;,
        Lio/branch/search/BranchLocalError$CorruptDB;,
        Lio/branch/search/BranchLocalError$DBNotReady;,
        Lio/branch/search/BranchLocalError$EmptyQuery;,
        Lio/branch/search/BranchLocalError$Unknown;,
        Lio/branch/search/BranchLocalError$WasCancelled;,
        Lio/branch/search/BranchLocalError$OptedOut;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public getInternalMessage()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/BranchLocalError;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
