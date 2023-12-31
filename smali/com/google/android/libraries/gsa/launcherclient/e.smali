.class public final Lcom/google/android/libraries/gsa/launcherclient/e;
.super Ljava/lang/Object;
.source "EventLogArray.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Lcom/google/android/libraries/gsa/launcherclient/d;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->a:Ljava/lang/String;

    new-array p1, p2, [Lcom/google/android/libraries/gsa/launcherclient/d;

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->b:[Lcom/google/android/libraries/gsa/launcherclient/d;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->c:I

    return-void
.end method

.method private final a(ILjava/lang/String;F)V
    .locals 4

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->c:I

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->b:[Lcom/google/android/libraries/gsa/launcherclient/d;

    array-length v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v3, v0, -0x1

    .line 1
    rem-int/2addr v3, v2

    add-int/lit8 v0, v0, -0x2

    .line 2
    rem-int/2addr v0, v2

    .line 3
    aget-object v1, v1, v3

    invoke-static {v1, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Lcom/google/android/libraries/gsa/launcherclient/d;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->b:[Lcom/google/android/libraries/gsa/launcherclient/d;

    aget-object v1, v1, v0

    invoke-static {v1, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Lcom/google/android/libraries/gsa/launcherclient/d;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->b:[Lcom/google/android/libraries/gsa/launcherclient/d;

    .line 8
    aget-object v1, v1, v3

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(ILjava/lang/String;F)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->b:[Lcom/google/android/libraries/gsa/launcherclient/d;

    .line 9
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/d;->f(Lcom/google/android/libraries/gsa/launcherclient/d;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->b:[Lcom/google/android/libraries/gsa/launcherclient/d;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->c:I

    .line 4
    aget-object v2, v0, v1

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/android/libraries/gsa/launcherclient/d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/libraries/gsa/launcherclient/d;-><init>([B)V

    .line 5
    aput-object v2, v0, v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->b:[Lcom/google/android/libraries/gsa/launcherclient/d;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->c:I

    .line 6
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(ILjava/lang/String;F)V

    iget p1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->c:I

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->b:[Lcom/google/android/libraries/gsa/launcherclient/d;

    array-length p2, p2

    .line 7
    rem-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->c:I

    return-void
.end method

.method private static a(Lcom/google/android/libraries/gsa/launcherclient/d;ILjava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/d;->c(Lcom/google/android/libraries/gsa/launcherclient/d;)I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/d;->b(Lcom/google/android/libraries/gsa/launcherclient/d;)Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(ILjava/lang/String;F)V

    return-void
.end method

.method public final a(Ljava/lang/String;F)V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(ILjava/lang/String;F)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    int-to-float p2, p2

    const/4 v0, 0x2

    .line 12
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(ILjava/lang/String;F)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->a:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xf

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " event history:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 15
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "  HH:mm:ss.SSSZ  "

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    .line 16
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->b:[Lcom/google/android/libraries/gsa/launcherclient/d;

    array-length v4, v3

    if-ge v2, v4, :cond_6

    iget v5, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->c:I

    add-int/2addr v5, v4

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    .line 17
    rem-int/2addr v5, v4

    aget-object v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/d;->a(Lcom/google/android/libraries/gsa/launcherclient/d;)J

    move-result-wide v4

    .line 18
    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/d;->b(Lcom/google/android/libraries/gsa/launcherclient/d;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/d;->c(Lcom/google/android/libraries/gsa/launcherclient/d;)I

    move-result v5

    const-string v6, ": "

    const/4 v7, 0x1

    if-eq v5, v7, :cond_4

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, ": false"

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v5, ": true"

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/d;->d(Lcom/google/android/libraries/gsa/launcherclient/d;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/d;->d(Lcom/google/android/libraries/gsa/launcherclient/d;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 19
    :goto_1
    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/d;->e(Lcom/google/android/libraries/gsa/launcherclient/d;)I

    move-result v5

    if-lez v5, :cond_5

    const-string v5, " & "

    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/google/android/libraries/gsa/launcherclient/d;->e(Lcom/google/android/libraries/gsa/launcherclient/d;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " similar events"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_5
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    :goto_0
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(ILjava/lang/String;F)V

    return-void
.end method
