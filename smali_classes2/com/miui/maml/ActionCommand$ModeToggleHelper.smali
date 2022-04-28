.class Lcom/miui/maml/ActionCommand$ModeToggleHelper;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeToggleHelper"
.end annotation


# instance fields
.field private mCurModeIndex:I

.field private mCurToggleIndex:I

.field private mModeIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mModeNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToggle:Z

.field private mToggleAll:Z

.field private mToggleModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/ActionCommand$1;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;-><init>()V

    return-void
.end method

.method private findMode(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public addMode(Ljava/lang/String;I)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public build(Ljava/lang/String;)Z
    .locals 5

    .line 184
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->findMode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 187
    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    return v1

    :cond_0
    const-string v0, "toggle"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleAll:Z

    return v1

    :cond_1
    const-string v0, ","

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    .line 198
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 199
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->findMode(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    return v0

    .line 202
    :cond_2
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_3
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggle:Z

    return v1
.end method

.method public click()V
    .locals 2

    .line 218
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggle:Z

    if-eqz v0, :cond_0

    .line 219
    iget v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    .line 220
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    goto :goto_0

    .line 221
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleAll:Z

    if-eqz v0, :cond_1

    .line 222
    iget v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    :cond_1
    :goto_0
    return-void
.end method

.method public getModeId()I
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
