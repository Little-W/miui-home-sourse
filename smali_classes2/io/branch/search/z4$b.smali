.class public final Lio/branch/search/z4$b;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/z4;-><init>(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/z4;


# direct methods
.method public constructor <init>(Lio/branch/search/z4;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/z4$b;->a:Lio/branch/search/z4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lio/branch/search/z4$b;->a:Lio/branch/search/z4;

    invoke-static {v0}, Lio/branch/search/z4;->a(Lio/branch/search/z4;)Ljava/io/File;

    move-result-object v0

    iget-object p0, p0, Lio/branch/search/z4$b;->a:Lio/branch/search/z4;

    invoke-static {p0}, Lio/branch/search/z4;->b(Lio/branch/search/z4;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/z4$b;->a()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
