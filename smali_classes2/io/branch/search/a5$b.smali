.class public Lio/branch/search/a5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/a5$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/a5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public a(III)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {p3}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p2}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result p3

    if-nez p3, :cond_4

    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isDigit(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method
