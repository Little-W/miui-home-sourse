.class public abstract Lio/branch/search/BranchError;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/BranchError$j;,
        Lio/branch/search/BranchError$u;,
        Lio/branch/search/BranchError$t;,
        Lio/branch/search/BranchError$f;,
        Lio/branch/search/BranchError$e;,
        Lio/branch/search/BranchError$d;,
        Lio/branch/search/BranchError$s;,
        Lio/branch/search/BranchError$a;,
        Lio/branch/search/BranchError$r;,
        Lio/branch/search/BranchError$h;,
        Lio/branch/search/BranchError$i;,
        Lio/branch/search/BranchError$b;,
        Lio/branch/search/BranchError$g;,
        Lio/branch/search/BranchError$l;,
        Lio/branch/search/BranchError$k;,
        Lio/branch/search/BranchError$q;,
        Lio/branch/search/BranchError$n;,
        Lio/branch/search/BranchError$p;,
        Lio/branch/search/BranchError$o;,
        Lio/branch/search/BranchError$m;,
        Lio/branch/search/BranchError$c;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/BranchError$c;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/BranchError$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/BranchError$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/BranchError;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/branch/search/BranchError;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchError;->message:Ljava/lang/String;

    return-object p0
.end method
