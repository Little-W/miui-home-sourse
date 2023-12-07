.class public final Lio/branch/search/b5$b;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/b5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/branch/search/b5$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/b5$b;

    invoke-direct {v0}, Lio/branch/search/b5$b;-><init>()V

    sput-object v0, Lio/branch/search/b5$b;->a:Lio/branch/search/b5$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/OkHttpClient;
    .locals 0

    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/b5$b;->a()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method
