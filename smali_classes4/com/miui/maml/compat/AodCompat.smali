.class public Lcom/miui/maml/compat/AodCompat;
.super Ljava/lang/Object;
.source "AodCompat.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AodCompat"

.field private static final ROOT_TAG:Ljava/lang/String; = "aod"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAod(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "aod"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
