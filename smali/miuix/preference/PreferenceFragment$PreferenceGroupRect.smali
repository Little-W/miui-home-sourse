.class Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferenceGroupRect"
.end annotation


# instance fields
.field public currentEndtb:[I

.field public currentMovetb:[I

.field public endRadioButtonCategory:Z

.field public index:I

.field public nextViewY:I

.field public preViewHY:I

.field public preferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public startRadioButtonCategory:Z

.field final synthetic this$0:Lmiuix/preference/PreferenceFragment;

.field public type:I


# direct methods
.method private constructor <init>(Lmiuix/preference/PreferenceFragment;)V
    .locals 1

    .line 106
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preferenceList:Ljava/util/List;

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentMovetb:[I

    .line 109
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentEndtb:[I

    const/4 p1, 0x0

    .line 110
    iput p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->index:I

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preViewHY:I

    .line 112
    iput v0, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->nextViewY:I

    .line 113
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->endRadioButtonCategory:Z

    .line 114
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->startRadioButtonCategory:Z

    .line 115
    iput v0, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/preference/PreferenceFragment;Lmiuix/preference/PreferenceFragment$1;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;-><init>(Lmiuix/preference/PreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public addPreference(I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preferenceList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferenceGroupRect{preferenceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preferenceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentMovetb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentMovetb:[I

    .line 125
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentEndtb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentEndtb:[I

    .line 126
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", preViewHY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preViewHY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextViewY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->nextViewY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->endRadioButtonCategory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
