.class public Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicLyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LyricHeader"
.end annotation


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public editor:Ljava/lang/String;

.field public offset:I

.field public title:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
