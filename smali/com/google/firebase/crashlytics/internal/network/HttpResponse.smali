.class public Lcom/google/firebase/crashlytics/internal/network/HttpResponse;
.super Ljava/lang/Object;


# instance fields
.field private final body:Ljava/lang/String;

.field private final code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->code:I

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public body()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->body:Ljava/lang/String;

    return-object p0
.end method

.method public code()I
    .locals 0

    iget p0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->code:I

    return p0
.end method
