.class final Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/CctTransportBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HttpResponse"
.end annotation


# instance fields
.field final code:I

.field final nextRequestMillis:J

.field final redirectUrl:Ljava/net/URL;


# direct methods
.method constructor <init>(ILjava/net/URL;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->code:I

    iput-object p2, p0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->redirectUrl:Ljava/net/URL;

    iput-wide p3, p0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->nextRequestMillis:J

    return-void
.end method
