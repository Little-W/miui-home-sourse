.class public Lio/branch/search/w5$a;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/w5;->a(Lokhttp3/RequestBody;Ljava/lang/String;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokhttp3/RequestBody;

.field public final synthetic b:[B


# direct methods
.method public constructor <init>(Lio/branch/search/w5;Lokhttp3/RequestBody;[B)V
    .locals 0

    iput-object p2, p0, Lio/branch/search/w5$a;->a:Lokhttp3/RequestBody;

    iput-object p3, p0, Lio/branch/search/w5$a;->b:[B

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object p0, p0, Lio/branch/search/w5$a;->b:[B

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lio/branch/search/w5$a;->a:Lokhttp3/RequestBody;

    invoke-virtual {p0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/w5$a;->b:[B

    invoke-interface {p1, p0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->close()V

    return-void
.end method
