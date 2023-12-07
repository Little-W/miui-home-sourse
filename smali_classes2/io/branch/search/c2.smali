.class public interface abstract Lio/branch/search/c2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/c2$d;,
        Lio/branch/search/c2$e;,
        Lio/branch/search/c2$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lio/branch/search/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/c2<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Lio/branch/search/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/c2<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Lio/branch/search/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/c2<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/c2$a;

    invoke-direct {v0}, Lio/branch/search/c2$a;-><init>()V

    sput-object v0, Lio/branch/search/c2;->a:Lio/branch/search/c2;

    new-instance v0, Lio/branch/search/c2$b;

    invoke-direct {v0}, Lio/branch/search/c2$b;-><init>()V

    sput-object v0, Lio/branch/search/c2;->b:Lio/branch/search/c2;

    new-instance v0, Lio/branch/search/c2$c;

    invoke-direct {v0}, Lio/branch/search/c2$c;-><init>()V

    sput-object v0, Lio/branch/search/c2;->c:Lio/branch/search/c2;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TR;"
        }
    .end annotation
.end method
