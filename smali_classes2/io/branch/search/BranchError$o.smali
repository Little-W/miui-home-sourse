.class public final Lio/branch/search/BranchError$o;
.super Lio/branch/search/BranchError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# static fields
.field public static final a:Lio/branch/search/BranchError$o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/BranchError$o;

    invoke-direct {v0}, Lio/branch/search/BranchError$o;-><init>()V

    sput-object v0, Lio/branch/search/BranchError$o;->a:Lio/branch/search/BranchError$o;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "Unable to open the Google Play Store for the app."

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/branch/search/BranchError;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
