.class Lmiuix/preference/PreferenceGroupAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Lmiuix/preference/PreferenceGroupAdapter;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter$1;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 68
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter$1;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    new-array v0, v0, [Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    invoke-static {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->access$002(Lmiuix/preference/PreferenceGroupAdapter;[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;)[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    return-void
.end method
