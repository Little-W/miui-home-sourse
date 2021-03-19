.class Lcom/miui/maml/ActionCommand$OnOffCommandHelper;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnOffCommandHelper"
.end annotation


# instance fields
.field protected mIsOn:Z

.field protected mIsToggle:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "toggle"

    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 273
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    goto :goto_0

    :cond_0
    const-string v0, "on"

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    goto :goto_0

    :cond_1
    const-string v0, "off"

    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 277
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    :cond_2
    :goto_0
    return-void
.end method
