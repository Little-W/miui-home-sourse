.class public Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;
.super Lcom/miui/home/launcher/ShortcutInfo;
.source "ShortcutPlaceholderProviderInfo.java"


# instance fields
.field public final addType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    const/16 v0, 0x8

    .line 17
    iput v0, p0, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->itemType:I

    .line 18
    iput p1, p0, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->spanX:I

    .line 20
    iput p1, p0, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->spanY:I

    return-void
.end method
