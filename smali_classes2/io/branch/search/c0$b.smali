.class public final Lio/branch/search/c0$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/c0;->a()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lio/branch/search/c0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/branch/search/c0;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/c0$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/c0$b;->b:Lio/branch/search/c0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/c0$b;->b:Lio/branch/search/c0;

    iget-object p0, p0, Lio/branch/search/c0$b;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lio/branch/search/c0;->a(Lio/branch/search/c0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/c0$b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
