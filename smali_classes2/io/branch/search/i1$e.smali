.class public Lio/branch/search/i1$e;
.super Lio/branch/search/i1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final g:Lio/branch/search/c0;


# direct methods
.method public constructor <init>(Lio/branch/search/c0;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/i1$b;-><init>()V

    iput-object p1, p0, Lio/branch/search/i1$e;->g:Lio/branch/search/c0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "request_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/branch/search/i1$e;->g:Lio/branch/search/c0;

    iget-object p1, p1, Lio/branch/search/c0;->e:Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lio/branch/search/i1$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
