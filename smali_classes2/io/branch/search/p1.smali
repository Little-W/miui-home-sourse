.class public interface abstract Lio/branch/search/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/p1$d;,
        Lio/branch/search/p1$e;,
        Lio/branch/search/p1$f;
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
.field public static final a:Lio/branch/search/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/p1<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Lio/branch/search/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/p1<",
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

.field public static final c:Lio/branch/search/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/p1<",
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

    new-instance v0, Lio/branch/search/p1$a;

    invoke-direct {v0}, Lio/branch/search/p1$a;-><init>()V

    sput-object v0, Lio/branch/search/p1;->a:Lio/branch/search/p1;

    new-instance v0, Lio/branch/search/p1$b;

    invoke-direct {v0}, Lio/branch/search/p1$b;-><init>()V

    sput-object v0, Lio/branch/search/p1;->b:Lio/branch/search/p1;

    new-instance v0, Lio/branch/search/p1$c;

    invoke-direct {v0}, Lio/branch/search/p1$c;-><init>()V

    sput-object v0, Lio/branch/search/p1;->c:Lio/branch/search/p1;

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
