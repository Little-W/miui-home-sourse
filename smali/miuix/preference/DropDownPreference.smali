.class public Lmiuix/preference/DropDownPreference;
.super Landroidx/preference/Preference;
.source "DropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;,
        Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;,
        Lmiuix/preference/DropDownPreference$SavedState;
    }
.end annotation


# static fields
.field private static final ADAPTER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EMPTY:[Ljava/lang/CharSequence;


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mContentAdapter:Landroid/widget/ArrayAdapter;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryIcons:[Landroid/graphics/drawable/Drawable;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNotifyHandler:Landroid/os/Handler;

.field private mSpinner:Lmiui/external/widget/Spinner;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Lmiuix/preference/DropDownPreference;->ADAPTER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 43
    new-array v0, v2, [Ljava/lang/CharSequence;

    sput-object v0, Lmiuix/preference/DropDownPreference;->EMPTY:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 85
    sget v0, Lmiuix/preference/R$attr;->dropdownPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mNotifyHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lmiuix/preference/DropDownPreference$1;

    invoke-direct {v0, p0}, Lmiuix/preference/DropDownPreference$1;-><init>(Lmiuix/preference/DropDownPreference;)V

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 94
    sget-object v0, Lmiuix/preference/R$styleable;->DropDownPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    sget v1, Lmiuix/preference/R$styleable;->DropDownPreference_adapter:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0, p1, p2, v1}, Lmiuix/preference/DropDownPreference;->initAdapter(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-direct {v0, p1, p2, p3, p4}, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 104
    :goto_0
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 105
    invoke-direct {p0}, Lmiuix/preference/DropDownPreference;->constructEntries()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/preference/DropDownPreference;)[Ljava/lang/CharSequence;
    .locals 0

    .line 37
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/preference/DropDownPreference;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mNotifyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/preference/DropDownPreference;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/preference/DropDownPreference;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/preference/DropDownPreference;)Lmiui/external/widget/Spinner;
    .locals 0

    .line 37
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiui/external/widget/Spinner;

    return-object p0
.end method

.method private constructEntries()V
    .locals 4

    .line 115
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    if-eqz v1, :cond_0

    .line 116
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 117
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 118
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->getEntryIcons()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryIcons:[Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 121
    iget-object v1, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 123
    iget-object v2, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryIcons:[Landroid/graphics/drawable/Drawable;

    :goto_1
    return-void
.end method

.method private disableSpinnerClick(Lmiui/external/widget/Spinner;)V
    .locals 1

    const/4 v0, 0x0

    .line 380
    invoke-virtual {p1, v0}, Lmiui/external/widget/Spinner;->setClickable(Z)V

    .line 381
    invoke-virtual {p1, v0}, Lmiui/external/widget/Spinner;->setLongClickable(Z)V

    .line 382
    invoke-virtual {p1, v0}, Lmiui/external/widget/Spinner;->setContextClickable(Z)V

    return-void
.end method

.method private findSpinnerIndexOfValue(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 431
    :goto_0
    iget-object v1, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 432
    aget-object v1, v1, v0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method private initAdapter(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 3

    .line 134
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 139
    sget-object v1, Lmiuix/preference/DropDownPreference;->ADAPTER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x2

    .line 141
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ArrayAdapter;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 151
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find Adapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 149
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t access non-public constructor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 147
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not instantiate the Adapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 145
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error creating Adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method createAdapter()Landroid/widget/ArrayAdapter;
    .locals 4

    .line 109
    new-instance v0, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;

    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    new-instance v3, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;

    invoke-direct {v3, p0, v2}, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;-><init>(Lmiuix/preference/DropDownPreference;Landroid/widget/ArrayAdapter;)V

    invoke-direct {v0, v1, v2, v3}, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;Lmiui/external/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 2

    .line 357
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 360
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mNotifyHandler:Landroid/os/Handler;

    new-instance v1, Lmiuix/preference/DropDownPreference$2;

    invoke-direct {v1, p0}, Lmiuix/preference/DropDownPreference$2;-><init>(Lmiuix/preference/DropDownPreference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 387
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 388
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    sget v1, Lmiuix/preference/R$id;->spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/external/widget/Spinner;

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiui/external/widget/Spinner;

    .line 389
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiui/external/widget/Spinner;

    invoke-direct {p0, v0}, Lmiuix/preference/DropDownPreference;->disableSpinnerClick(Lmiui/external/widget/Spinner;)V

    .line 390
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiui/external/widget/Spinner;

    iget-object v1, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lmiui/external/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 391
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiui/external/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/external/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 392
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiui/external/widget/Spinner;

    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiuix/preference/DropDownPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/external/widget/Spinner;->setSelection(I)V

    .line 393
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiui/external/widget/Spinner;

    new-instance v1, Lmiuix/preference/DropDownPreference$3;

    invoke-direct {v1, p0}, Lmiuix/preference/DropDownPreference$3;-><init>(Lmiuix/preference/DropDownPreference;)V

    invoke-virtual {v0, v1}, Lmiui/external/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 399
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiui/external/widget/Spinner;

    new-instance v1, Lmiuix/preference/DropDownPreference$4;

    invoke-direct {v1, p0, p1}, Lmiuix/preference/DropDownPreference$4;-><init>(Lmiuix/preference/DropDownPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Lmiui/external/widget/Spinner;->setOnSpinnerDismissListener(Lmiui/external/widget/Spinner$OnSpinnerDismissListener;)V

    .line 405
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lmiuix/preference/DropDownPreference$5;

    invoke-direct {v1, p0}, Lmiuix/preference/DropDownPreference$5;-><init>(Lmiuix/preference/DropDownPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 427
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 158
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 344
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lmiuix/preference/DropDownPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    check-cast p1, Lmiuix/preference/DropDownPreference$SavedState;

    .line 351
    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 352
    iget-object p1, p1, Lmiuix/preference/DropDownPreference$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void

    .line 346
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 331
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 337
    :cond_0
    new-instance v1, Lmiuix/preference/DropDownPreference$SavedState;

    invoke-direct {v1, v0}, Lmiuix/preference/DropDownPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 338
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmiuix/preference/DropDownPreference$SavedState;->mValue:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    .line 326
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lmiuix/preference/DropDownPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 1

    .line 372
    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiui/external/widget/Spinner;

    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p1}, Lmiui/external/widget/Spinner;->performClick()Z

    const-string p1, "DropDownPreference"

    const-string v0, "trigger from perform click"

    .line 375
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 2

    .line 185
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 186
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 190
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    .line 191
    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 193
    :goto_0
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    if-eqz v1, :cond_0

    .line 224
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 226
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 170
    iget-boolean v2, p0, Lmiuix/preference/DropDownPreference;->mValueSet:Z

    if-nez v2, :cond_1

    .line 171
    :cond_0
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    .line 172
    iput-boolean v1, p0, Lmiuix/preference/DropDownPreference;->mValueSet:Z

    .line 173
    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->persistString(Ljava/lang/String;)Z

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    :cond_1
    return-void
.end method
